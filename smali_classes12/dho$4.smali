.class public final Ldho$4;
.super Ljava/lang/Object;
.source "EncryptManager.java"

# interfaces
.implements Lcom/alibaba/android/dtencrypt/DTLogProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldho;


# direct methods
.method public constructor <init>(Ldho;)V
    .locals 0
    .param p1, "this$0"    # Ldho;

    .prologue
    .line 250
    iput-object p1, p0, Ldho$4;->a:Ldho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dingLog(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 253
    const-string/jumbo v0, "crypto"

    sget-object v1, Ldho;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "AnHeng msg="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method
