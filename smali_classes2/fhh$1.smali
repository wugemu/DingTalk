.class final Lfhh$1;
.super Ljava/lang/Object;
.source "DepartmentViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfhh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

.field final synthetic b:Lfhh;


# direct methods
.method constructor <init>(Lfhh;Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V
    .locals 0
    .param p1, "this$0"    # Lfhh;

    .prologue
    .line 128
    iput-object p1, p0, Lfhh$1;->b:Lfhh;

    iput-object p2, p0, Lfhh$1;->a:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 131
    const-string/jumbo v0, "org_management_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lfhh$1;->b:Lfhh;

    iget-object v1, p0, Lfhh$1;->a:Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-static {v0, v1}, Lfhh;->a(Lfhh;Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V

    .line 133
    return-void
.end method
