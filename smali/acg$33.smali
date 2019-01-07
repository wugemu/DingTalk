.class final Lacg$33;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->b(Landroid/content/Context;Ljava/lang/String;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Lcma;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;ILcma;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lacg$33;->a:Ljava/lang/String;

    iput-object p2, p0, Lacg$33;->b:Landroid/content/Context;

    iput p3, p0, Lacg$33;->c:I

    iput-object p4, p0, Lacg$33;->d:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 375
    .line 1378
    const-string/jumbo v0, "MailNavigator"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "check mail alias success for accountName: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lacg$33;->a:Ljava/lang/String;

    invoke-static {v3}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lacg$33;->b:Landroid/content/Context;

    iget-object v1, p0, Lacg$33;->a:Ljava/lang/String;

    iget v2, p0, Lacg$33;->c:I

    iget-object v3, p0, Lacg$33;->d:Lcma;

    invoke-static {v0, v1, v2, v3}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;ILcma;)V

    .line 375
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 389
    const-string/jumbo v0, "MailNavigator"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "check mail alias success for accountName: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lacg$33;->a:Ljava/lang/String;

    .line 390
    invoke-static {v3}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", s: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", s1: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    .line 389
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lacg$33;->b:Landroid/content/Context;

    iget-object v1, p0, Lacg$33;->a:Ljava/lang/String;

    iget v2, p0, Lacg$33;->c:I

    iget-object v3, p0, Lacg$33;->d:Lcma;

    invoke-static {v0, v1, v2, v3}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;ILcma;)V

    .line 392
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 385
    return-void
.end method
