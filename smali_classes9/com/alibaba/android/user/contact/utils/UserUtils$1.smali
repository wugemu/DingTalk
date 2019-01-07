.class final Lcom/alibaba/android/user/contact/utils/UserUtils$1;
.super Ljava/lang/Object;
.source "UserUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZIZZZZLandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/util/List;

.field final synthetic g:Z

.field final synthetic h:I

.field final synthetic i:Z

.field final synthetic j:Z

.field final synthetic k:Z

.field final synthetic l:Z

.field final synthetic m:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ZIZZZZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->b:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->c:Z

    iput-object p4, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->f:Ljava/util/List;

    iput-boolean p7, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->g:Z

    iput p8, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->h:I

    iput-boolean p9, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->i:Z

    iput-boolean p10, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->j:Z

    iput-boolean p11, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->k:Z

    iput-boolean p12, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->l:Z

    iput-object p13, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->m:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 163
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 164
    if-nez p2, :cond_3

    .line 166
    const-string/jumbo v0, "org_create_choocestaff_contact_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v0, "contact_create_team_add_member_from_address_click"

    invoke-static {v0}, Lfxo;->b(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, "identity_create_org_add_admin"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string/jumbo v0, "org_create_chooceadmin_fromContact_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->b:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->c:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->d:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->f:Ljava/util/List;

    iget-boolean v4, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->g:Z

    iget v5, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->h:I

    iget-boolean v6, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->i:Z

    iget-boolean v7, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->j:Z

    iget-boolean v8, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->k:Z

    iget-boolean v9, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->l:Z

    invoke-static/range {v0 .. v9}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZIZZZZ)V

    .line 173
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 182
    :cond_1
    :goto_1
    return-void

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->a:Ljava/lang/String;

    goto :goto_0

    .line 176
    :cond_3
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 178
    const-string/jumbo v0, "org_create_choocestaff_manulentry_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v0, "contact_create_team_add_member_from_enter_click"

    invoke-static {v0}, Lfxo;->b(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/user/contact/utils/UserUtils$1;->m:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_1
.end method
