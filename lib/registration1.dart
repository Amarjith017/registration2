import 'package:flutter/material.dart';
import 'package:registration/registration.dart';

class RegisterContract1 extends StatefulWidget {
  const RegisterContract1({super.key});

  @override
  State<RegisterContract1> createState() => _RegisterContract1State();
}

class _RegisterContract1State extends State<RegisterContract1> {
  final _formKey = GlobalKey<FormState>(); // Key to manage the form state
  TextEditingController CompanyController = TextEditingController();
  TextEditingController RoleController = TextEditingController();
  TextEditingController ExcperienceController = TextEditingController();
  TextEditingController ExpertiseController = TextEditingController();
  TextEditingController GovtController = TextEditingController();
  TextEditingController CompRegController = TextEditingController();
  TextEditingController AddressProofController = TextEditingController();

  bool ShowPass = true;

  // previous handler that helps to go back to the previous page
  void PrevHandler() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return const RegisterContract();
      },
    )); // You can add further sign-up logic here, like calling an API
  }

  // Sign-up handler that checks if the form is valid before printing the email
  void RegisterContractHandler() {
    if (_formKey.currentState?.validate() ?? false) {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return const RegisterContract1();
        },
      )); // You can add further sign-up logic here, like calling an API
    } else {
      print('Form is invalid');
    }
  }

  @override
  void dispose() {
    // Dispose the controllers to prevent memory leaks
    CompanyController.dispose();
    RoleController.dispose();
    ExcperienceController.dispose();
    ExpertiseController.dispose();
    GovtController.dispose();
    CompRegController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: _formKey, // Link the form to the key
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Contractor Registration',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontFamily: 'Times New Roman',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Professional Information',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Times New Roman',
                      decoration: TextDecoration.underline
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                    child: TextFormField(
                      controller: CompanyController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_2_outlined),
                        labelText: 'Company Name',
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Company Name is required';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                    child: TextFormField(
                      controller: RoleController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.calendar_today),
                        labelText: 'Role / Position',
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Role/Position is required';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                    child: TextFormField(
                      controller: ExcperienceController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_2_outlined),
                        labelText: 'Experience',
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Experience is required';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                    child: TextFormField(
                      controller: ExpertiseController,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        labelText: 'Expertise/Specialization',
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 20),
                  const Text(
                    'Document Upload',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Times New Roman',
                      decoration: TextDecoration.underline
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                    child: TextFormField(
                      controller: GovtController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.home),
                        labelText: 'Government issued ID',
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Government ID is required';
                        }
                        return null;
                      },
                    ),
                  ),
                 
                 Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                    child: TextFormField(
                      controller: CompRegController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.home),
                        labelText: 'Company Registration Certificate',
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Company Registration Certificate is required';
                        }
                        return null;
                      },
                    ),
                  ),
                 
                 Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                    child: TextFormField(
                      controller: AddressProofController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.home),
                        labelText: 'Proof of Address',
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Proof of Address is required';
                        }
                        return null;
                      },
                    ),
                  ),
                 
                  Row(
                    children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 50.0),
                    child: ElevatedButton(
                      onPressed: PrevHandler,
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(200, 60),
                      ),
                      child: const Text(
                        "Previous",
                        style: TextStyle(
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ),
                    Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      onPressed: RegisterContractHandler,  // Updated to call RegisterContractHandler
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(200, 60),
                      ),
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
