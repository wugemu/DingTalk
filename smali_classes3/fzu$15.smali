.class final Lfzu$15;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1867
    iput-object p1, p0, Lfzu$15;->a:Landroid/content/Context;

    iput-wide p2, p0, Lfzu$15;->b:J

    iput-object p4, p0, Lfzu$15;->c:Ljava/util/List;

    iput-object p5, p0, Lfzu$15;->d:Ljava/lang/String;

    iput-object p6, p0, Lfzu$15;->e:Ljava/lang/String;

    iput-object p7, p0, Lfzu$15;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1867
    move-object v8, p1

    check-cast v8, Lcom/alibaba/wukong/im/Message;

    .line 2870
    iget-object v1, p0, Lfzu$15;->a:Landroid/content/Context;

    iget-wide v2, p0, Lfzu$15;->b:J

    iget-object v4, p0, Lfzu$15;->c:Ljava/util/List;

    iget-object v5, p0, Lfzu$15;->d:Ljava/lang/String;

    iget-object v6, p0, Lfzu$15;->e:Ljava/lang/String;

    iget-object v7, p0, Lfzu$15;->f:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Lfzu;->a(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    .line 1867
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1881
    const-string/jumbo v0, "CSpace"

    sget-object v1, Lfzu;->c:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "navToSendChat orgSend getMessage errorCode:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " errorMsg:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 1882
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1881
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    iget-object v1, p0, Lfzu$15;->a:Landroid/content/Context;

    iget-wide v2, p0, Lfzu$15;->b:J

    iget-object v4, p0, Lfzu$15;->c:Ljava/util/List;

    iget-object v5, p0, Lfzu$15;->d:Ljava/lang/String;

    iget-object v6, p0, Lfzu$15;->e:Ljava/lang/String;

    iget-object v7, p0, Lfzu$15;->f:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lfzu;->a(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    .line 1887
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1877
    return-void
.end method
