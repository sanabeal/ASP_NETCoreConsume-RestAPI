#pragma checksum "G:\API & UI Project core-employee\ASP.NETCoreConsumeAPI\ASP.NETCoreConsumeAPI\Views\Employees\GetEmployee.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "530052a7eb6b06c1d4b7441f91a7e2d42ab32799"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Employees_GetEmployee), @"mvc.1.0.view", @"/Views/Employees/GetEmployee.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"530052a7eb6b06c1d4b7441f91a7e2d42ab32799", @"/Views/Employees/GetEmployee.cshtml")]
    public class Views_Employees_GetEmployee : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<ASP.NETCoreConsumeAPI.Models.Employees>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "G:\API & UI Project core-employee\ASP.NETCoreConsumeAPI\ASP.NETCoreConsumeAPI\Views\Employees\GetEmployee.cshtml"
  
    ViewData["Title"] = "GetEmployee";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<h2>Get Employee by Id <a asp-action=\"Index\" class=\"btn btn-sm btn-primary\">Back</a></h2>\r\n<h3>");
#nullable restore
#line 8 "G:\API & UI Project core-employee\ASP.NETCoreConsumeAPI\ASP.NETCoreConsumeAPI\Views\Employees\GetEmployee.cshtml"
Write(ViewBag.StatusCode);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h3>
<form method=""post"">
    <div class=""form-group"">
        <label for=""id"">Id:</label>
        <input class=""form-control"" name=""id"" />
    </div>
    <div class=""text-center panel-body"">
        <button type=""submit"" class=""btn btn-sm btn-primary"">Get Employee</button>
    </div>
</form>

");
#nullable restore
#line 19 "G:\API & UI Project core-employee\ASP.NETCoreConsumeAPI\ASP.NETCoreConsumeAPI\Views\Employees\GetEmployee.cshtml"
 if (Model != null)
{

#line default
#line hidden
#nullable disable
            WriteLiteral(@"    <h2>Reservation</h2>
    <table class=""table table-sm table-striped table-bordered m-2"">
        <thead>
            <tr>
                <th>EmployeeId</th>
                <th>FirstName</th>
                <th>LastName</th>
                <th>Email</th>
                <th>DateOfBrith</th>
                <th>Gender</th>
                <th>DepartmentId</th>                
                <th>PhotoPath</th>                
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>");
#nullable restore
#line 37 "G:\API & UI Project core-employee\ASP.NETCoreConsumeAPI\ASP.NETCoreConsumeAPI\Views\Employees\GetEmployee.cshtml"
               Write(Model.EmployeeId);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 38 "G:\API & UI Project core-employee\ASP.NETCoreConsumeAPI\ASP.NETCoreConsumeAPI\Views\Employees\GetEmployee.cshtml"
               Write(Model.FirstName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 39 "G:\API & UI Project core-employee\ASP.NETCoreConsumeAPI\ASP.NETCoreConsumeAPI\Views\Employees\GetEmployee.cshtml"
               Write(Model.LastName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 40 "G:\API & UI Project core-employee\ASP.NETCoreConsumeAPI\ASP.NETCoreConsumeAPI\Views\Employees\GetEmployee.cshtml"
               Write(Model.Email);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 41 "G:\API & UI Project core-employee\ASP.NETCoreConsumeAPI\ASP.NETCoreConsumeAPI\Views\Employees\GetEmployee.cshtml"
               Write(Model.DateOfBrith);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 42 "G:\API & UI Project core-employee\ASP.NETCoreConsumeAPI\ASP.NETCoreConsumeAPI\Views\Employees\GetEmployee.cshtml"
               Write(Model.Gender);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 43 "G:\API & UI Project core-employee\ASP.NETCoreConsumeAPI\ASP.NETCoreConsumeAPI\Views\Employees\GetEmployee.cshtml"
               Write(Model.DepartmentId);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 44 "G:\API & UI Project core-employee\ASP.NETCoreConsumeAPI\ASP.NETCoreConsumeAPI\Views\Employees\GetEmployee.cshtml"
               Write(Model.PhotoPath);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n");
#nullable restore
#line 48 "G:\API & UI Project core-employee\ASP.NETCoreConsumeAPI\ASP.NETCoreConsumeAPI\Views\Employees\GetEmployee.cshtml"
}

#line default
#line hidden
#nullable disable
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<ASP.NETCoreConsumeAPI.Models.Employees> Html { get; private set; }
    }
}
#pragma warning restore 1591
