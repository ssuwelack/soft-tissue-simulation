# A short introduction to soft tissue simulation

Modeling soft tissue by means of continuum mechanics has become an active area of research in many fields such as patient-specific surgery simulation, non-rigid image registration and cardiovascular diagnostics. However, it currently is a very young discipline that evolves at a rapid pace (and has arguably to mature much more before these methods become part of the daily clinical routine). When I was looking for literature that could be recommended to my students I felt that there is currently no real introductory textbook on this matter. This little script is to serve exactly this purpose. Although it is in most parts a short course on elasticity theory and the finite element method (FEM), it should also hint to recent research results in terms of material laws, special FEM algorithms and applications of soft tissue simulation.

Here is a list of the topics currently covered by this text:

* Introduction to elasticity: Strain, stress, balance principles and mechanical energy
* Material laws: Work conjugacy, linear elasticity, hyperelasticity, viscoelasticity
* The road to discretization: Variational formulation and weak form
* The finite element method: Shape functions, matrix formulation, numerical integration
* Time integration and projective constraint handling
* Efficient real-time models: Corotated tetrahedra
* Linear solvers: Conjugate gradients, preconditioners and multigrid
			

Please help to make this book better by reporting errors or any other issue at https://github.com/ssuwelack/soft-tissue-simulation/issues.

Are you a researcher? Please add a reference to your soft tissue simulation related work in the application chapter and submit a pull request.

This is a joint work in progress. If you feel you have something to contribute to an introductory text for soft tissue simulation, please become an author of this book!
	
