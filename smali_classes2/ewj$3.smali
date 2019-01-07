.class final Lewj$3;
.super Ljava/lang/Object;
.source "TeleConfMenuManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewj;


# direct methods
.method constructor <init>(Lewj;)V
    .locals 0
    .param p1, "this$0"    # Lewj;

    .prologue
    .line 368
    iput-object p1, p0, Lewj$3;->a:Lewj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 371
    iget-object v0, p0, Lewj$3;->a:Lewj;

    .line 1048
    const/4 v1, 0x0

    iput-object v1, v0, Lewj;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    .line 372
    return-void
.end method
