.class final Leii$7$1$1;
.super Ljava/lang/Object;
.source "ConfigEngine.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leii$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/object/CsConfigObject;

.field final synthetic b:Leii$7$1;


# direct methods
.method constructor <init>(Leii$7$1;Lcom/alibaba/android/rimet/biz/object/CsConfigObject;)V
    .locals 0
    .param p1, "this$2"    # Leii$7$1;

    .prologue
    .line 393
    iput-object p1, p0, Leii$7$1$1;->b:Leii$7$1;

    iput-object p2, p0, Leii$7$1$1;->a:Lcom/alibaba/android/rimet/biz/object/CsConfigObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 393
    check-cast p1, Ljava/lang/Boolean;

    .line 2022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1397
    sget-object v1, Lelz;->g:Ljava/lang/String;

    invoke-static {v1}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1398
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1399
    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 1400
    sget-object v1, Lelz;->g:Ljava/lang/String;

    invoke-static {v1}, Lcpk;->a(Ljava/lang/String;)V

    .line 1403
    :cond_0
    if-eqz v0, :cond_1

    .line 1404
    iget-object v0, p0, Leii$7$1$1;->b:Leii$7$1;

    iget-object v0, v0, Leii$7$1;->b:Leii$7;

    iget-object v0, v0, Leii$7;->a:Leii;

    iget-object v1, p0, Leii$7$1$1;->a:Lcom/alibaba/android/rimet/biz/object/CsConfigObject;

    iget-object v1, v1, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->topic:Ljava/lang/String;

    iget-object v2, p0, Leii$7$1$1;->a:Lcom/alibaba/android/rimet/biz/object/CsConfigObject;

    iget-wide v2, v2, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->version:J

    invoke-static {v0, v1, v2, v3}, Leii;->a(Leii;Ljava/lang/String;J)V

    .line 1405
    const-string/jumbo v0, "oa_user"

    iget-object v1, p0, Leii$7$1$1;->a:Lcom/alibaba/android/rimet/biz/object/CsConfigObject;

    iget-object v1, v1, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1406
    iget-object v0, p0, Leii$7$1$1;->b:Leii$7$1;

    iget-object v0, v0, Leii$7$1;->b:Leii$7;

    iget-object v0, v0, Leii$7;->a:Leii;

    iget-object v1, p0, Leii$7$1$1;->a:Lcom/alibaba/android/rimet/biz/object/CsConfigObject;

    iget-wide v2, v1, Lcom/alibaba/android/rimet/biz/object/CsConfigObject;->version:J

    invoke-static {v0, v2, v3}, Leii;->a(Leii;J)V

    .line 393
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 419
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 414
    return-void
.end method
