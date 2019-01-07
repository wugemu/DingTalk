.class public final Lgrq;
.super Ljava/lang/Object;
.source "ChooseFileTypeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgrq$a;
    }
.end annotation


# instance fields
.field a:Lgrq$a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgrq$a;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lgrq$a;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lgrq;->a:Lgrq$a;

    .line 30
    iput-object p1, p0, Lgrq;->b:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lgrq;->b:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lgrq;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 37
    .local v2, "resources":Landroid/content/res/Resources;
    if-nez v2, :cond_0

    .line 76
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {}, Lgrn;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/CharSequence;

    .line 42
    .local v1, "items":[Ljava/lang/CharSequence;
    sget v3, Liff$f;->dt_photo_image:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 43
    sget v3, Liff$f;->dt_photo_pdf_file:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 44
    sget v3, Liff$f;->dt_photo_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 51
    :goto_1
    new-instance v3, Lgrq$1;

    invoke-direct {v3, p0, v1}, Lgrq$1;-><init>(Lgrq;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 46
    .end local v1    # "items":[Ljava/lang/CharSequence;
    :cond_1
    new-array v1, v6, [Ljava/lang/CharSequence;

    .line 47
    .restart local v1    # "items":[Ljava/lang/CharSequence;
    sget v3, Liff$f;->dt_photo_image:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 48
    sget v3, Liff$f;->dt_photo_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    goto :goto_1
.end method
