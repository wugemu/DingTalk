.class final Lewl$1;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewl;


# direct methods
.method constructor <init>(Lewl;)V
    .locals 0
    .param p1, "this$0"    # Lewl;

    .prologue
    .line 166
    iput-object p1, p0, Lewl$1;->a:Lewl;

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
    .line 170
    iget-object v0, p0, Lewl$1;->a:Lewl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lewl;->a(Lewl;Z)Z

    .line 171
    return-void
.end method
