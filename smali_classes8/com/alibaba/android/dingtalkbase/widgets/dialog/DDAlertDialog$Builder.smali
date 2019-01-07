.class public Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;
.super Landroid/app/AlertDialog$Builder;
.source "DDAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Landroid/app/AlertDialog;

.field public b:Landroid/content/DialogInterface$OnDismissListener;

.field private c:Lcrg;

.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    sget v0, Lcig$k;->DtTheme_Widget_Dialog_Alert:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 59
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->a:Landroid/app/AlertDialog;

    .line 62
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->c:Lcrg;

    .line 65
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->b:Landroid/content/DialogInterface$OnDismissListener;

    .line 68
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->d:Landroid/app/Activity;

    .line 91
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->d:Landroid/app/Activity;

    .line 92
    new-instance v0, Lcrg;

    invoke-direct {v0}, Lcrg;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->c:Lcrg;

    .line 93
    return-void
.end method

.method private a(Z)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "cancelable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 138
    .local v0, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 140
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->d:Landroid/app/Activity;

    invoke-static {v2}, Lcms;->c(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 143
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->c:Lcrg;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->d:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Lcrg;->a(Landroid/app/Activity;Landroid/app/Dialog;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    return-object v0

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;)Lcrg;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->c:Lcrg;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->b:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->c:Lcrg;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->c:Lcrg;

    invoke-virtual {v0}, Lcrg;->a()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public create()Landroid/app/AlertDialog;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->a:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 102
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->a:Landroid/app/AlertDialog;

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->a:Landroid/app/AlertDialog;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public bridge synthetic setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .prologue
    .line 56
    .line 1175
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->b:Landroid/content/DialogInterface$OnDismissListener;

    .line 56
    return-object p0
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->a(Z)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
