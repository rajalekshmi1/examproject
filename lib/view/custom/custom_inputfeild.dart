// import 'package:flutter/material.dart';

// class CustomInputField extends StatefulWidget {
// //   String? hintText;
// //   IconData? prefixIcon;
// //   IconData? suffixIcon;
// //   Color? color; 
// //   Color? containerColor;

// //   CustomInputField({
// //     this.hintText,
// //     this.prefixIcon,
// //     this.suffixIcon,
// //     this.color, 
// //     this.containerColor, 
// //   });

//   @override
//   State<CustomInputField> createState() => _CustomInputFieldState();
// }

// class _CustomInputFieldState extends State<CustomInputField> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return TextFormField(
// //       decoration: InputDecoration(
// //         filled: true, 
// //         fillColor: Colors.transparent, 
// //         hintText: widget.hintText,
// //         hintStyle: TextStyle(
// //           color: Colors.black45,
// //           fontWeight: FontWeight.w600,
// //           fontSize: 12,
// //         ),
// //         prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
// //         suffixIcon: Icon(widget.suffixIcon),
// //           enabledBorder: OutlineInputBorder(
// //           borderRadius: BorderRadius.circular(10),
// //           borderSide: BorderSide(color: Colors.black54),
          
// //         ),
// //         focusedBorder: OutlineInputBorder( 
// //         borderRadius: BorderRadius.circular(10),
// //         borderSide: BorderSide(color: Colors.black), 
// //        ),
// //       ),
// //     );
// //   }
// // }
// // class LoginScreen extends StatelessWidget {
// //   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//    final formkey = GlobalKey<FormState>();
//    return Scaffold(
//     body: Form(
//       key: formkey,
//       child: Column(
//         children: [
//           TextFormField(
//             validator: (value) {
//               if(value==null||value.isEmpty){
//                 return "enter a value";
//               }
//               else
//               {
//                 return null;
//               }
//             },
//           ),
//           ElevatedButton(onPressed: (){
//             formkey.currentState!.validate()){
//               ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("processing data"))
//               );
//             }
//           }, 
//           child: Text("data"),
//           )
//         ],
//       )
//       ),
//    );
//   }
// }
