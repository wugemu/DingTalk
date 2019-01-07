.class public final Lgpq$3;
.super Ljava/lang/Object;
.source "CSpaceUserBaseInfoFetchUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:J

.field final synthetic d:Lcma;

.field final synthetic e:Lgpq;


# direct methods
.method public constructor <init>(Lgpq;Landroid/content/Context;Ljava/util/List;JLcma;)V
    .locals 0
    .param p1, "this$0"    # Lgpq;

    .prologue
    .line 265
    iput-object p1, p0, Lgpq$3;->e:Lgpq;

    iput-object p2, p0, Lgpq$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lgpq$3;->b:Ljava/util/List;

    iput-wide p4, p0, Lgpq$3;->c:J

    iput-object p6, p0, Lgpq$3;->d:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 265
    move-object v6, p1

    check-cast v6, Ljava/util/List;

    .line 1268
    iget-object v1, p0, Lgpq$3;->e:Lgpq;

    iget-object v2, p0, Lgpq$3;->a:Landroid/content/Context;

    iget-object v3, p0, Lgpq$3;->b:Ljava/util/List;

    iget-wide v4, p0, Lgpq$3;->c:J

    iget-object v9, p0, Lgpq$3;->d:Lcma;

    move-object v8, v7

    invoke-static/range {v1 .. v9}, Lgpq;->a(Lgpq;Landroid/content/Context;Ljava/util/List;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 265
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 278
    iget-object v1, p0, Lgpq$3;->e:Lgpq;

    iget-object v2, p0, Lgpq$3;->a:Landroid/content/Context;

    iget-object v3, p0, Lgpq$3;->b:Ljava/util/List;

    iget-wide v4, p0, Lgpq$3;->c:J

    const/4 v6, 0x0

    iget-object v9, p0, Lgpq$3;->d:Lcma;

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v1 .. v9}, Lgpq;->a(Lgpq;Landroid/content/Context;Ljava/util/List;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 279
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 274
    return-void
.end method
