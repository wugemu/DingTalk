.class final Lewl$25$1;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewl$25;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lewl$25;


# direct methods
.method constructor <init>(Lewl$25;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lewl$25;

    .prologue
    .line 381
    iput-object p1, p0, Lewl$25$1;->b:Lewl$25;

    iput-object p2, p0, Lewl$25$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 384
    iget-object v0, p0, Lewl$25$1;->b:Lewl$25;

    iget-object v0, v0, Lewl$25;->a:Lewl;

    iget-object v1, p0, Lewl$25$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lewl;->a(Ljava/lang/String;)V

    .line 385
    return-void
.end method
