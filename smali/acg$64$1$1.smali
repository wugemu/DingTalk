.class final Lacg$64$1$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg$64$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacg$64$1;


# direct methods
.method constructor <init>(Lacg$64$1;)V
    .locals 0
    .param p1, "this$1"    # Lacg$64$1;

    .prologue
    .line 4282
    iput-object p1, p0, Lacg$64$1$1;->a:Lacg$64$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 4285
    const-string/jumbo v0, "MailNavigator"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "account: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lacg$64$1$1;->a:Lacg$64$1;

    iget-object v3, v3, Lacg$64$1;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " not login"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4286
    iget-object v0, p0, Lacg$64$1$1;->a:Lacg$64$1;

    iget-object v0, v0, Lacg$64$1;->b:Lacg$64;

    iget-object v0, v0, Lacg$64;->b:Landroid/content/Context;

    iget-object v1, p0, Lacg$64$1$1;->a:Lacg$64$1;

    iget-object v1, v1, Lacg$64$1;->b:Lacg$64;

    iget-object v1, v1, Lacg$64;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lacg;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 4287
    return-void
.end method
