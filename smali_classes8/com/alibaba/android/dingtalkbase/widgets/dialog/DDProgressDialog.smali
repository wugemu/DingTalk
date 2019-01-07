.class public Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
.super Landroid/app/ProgressDialog;
.source "DDProgressDialog.java"

# interfaces
.implements Lcrh$a;


# instance fields
.field private a:Lcrh;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 29
    return-void

    .line 28
    :cond_0
    sget v0, Lcig$k;->DtTheme_Widget_Dialog_Alert:I

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 18
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a:Lcrh;

    .line 21
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->b:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->b:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 43
    .line 1048
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    .line 43
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 53
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 59
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v0, p3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setIndeterminate(Z)V

    .line 63
    invoke-virtual {v0, p4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 65
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 66
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a:Lcrh;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a:Lcrh;

    invoke-virtual {v0}, Lcrh;->a()V

    .line 96
    :cond_0
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 97
    return-void
.end method

.method public final onDismissRequest()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 106
    return-void
.end method

.method public show()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 73
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->b:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 75
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcms;->c(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-super {p0}, Landroid/app/ProgressDialog;->show()V

    .line 78
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a:Lcrh;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcrh;

    invoke-direct {v1}, Lcrh;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a:Lcrh;

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a:Lcrh;

    invoke-virtual {v1, v0, p0}, Lcrh;->a(Landroid/app/Activity;Lcrh$a;)V

    .line 85
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    return-void
.end method
