.class final Lewl$22;
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
    .line 218
    iput-object p1, p0, Lewl$22;->a:Lewl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 221
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewl;->i()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Info card reset"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lewl$22;->a:Lewl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lewl;->a(Lewl;Leym;)Leym;

    .line 223
    return-void
.end method
