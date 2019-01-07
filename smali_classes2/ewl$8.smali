.class public final Lewl$8;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:I

.field final synthetic c:Lewl$a;

.field final synthetic d:Lewl;


# direct methods
.method public constructor <init>(Lewl;Landroid/app/Activity;ILewl$a;)V
    .locals 0
    .param p1, "this$0"    # Lewl;

    .prologue
    .line 1045
    iput-object p1, p0, Lewl$8;->d:Lewl;

    iput-object p2, p0, Lewl$8;->a:Landroid/app/Activity;

    iput p3, p0, Lewl$8;->b:I

    iput-object p4, p0, Lewl$8;->c:Lewl$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 1048
    iget-object v0, p0, Lewl$8;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lewl$8;->a:Landroid/app/Activity;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.READ_CALL_LOG"

    aput-object v3, v1, v2

    new-instance v2, Lewl$8$1;

    invoke-direct {v2, p0}, Lewl$8$1;-><init>(Lewl$8;)V

    invoke-static {v0, v4, v1, v2}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    .line 1069
    :goto_0
    return-void

    .line 1067
    :cond_0
    iget-object v0, p0, Lewl$8;->d:Lewl;

    iget v1, p0, Lewl$8;->b:I

    iget-object v2, p0, Lewl$8;->c:Lewl$a;

    invoke-static {v0, v1, v2}, Lewl;->a(Lewl;ILewl$a;)V

    goto :goto_0
.end method
