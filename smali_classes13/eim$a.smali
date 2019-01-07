.class final Leim$a;
.super Ljava/lang/Object;
.source "CustomThemeLoadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field final synthetic e:Leim;


# direct methods
.method private constructor <init>(Leim;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Leim$a;->e:Leim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leim;B)V
    .locals 0
    .param p1, "x0"    # Leim;

    .prologue
    .line 269
    invoke-direct {p0, p1}, Leim$a;-><init>(Leim;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Leim$a;->d:Z

    .line 278
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v1

    iget-wide v2, p0, Leim$a;->a:J

    iget-object v4, p0, Leim$a;->b:Ljava/lang/String;

    iget-object v5, p0, Leim$a;->c:Ljava/lang/String;

    .line 1323
    const-string/jumbo v0, "CustomThemeManager"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    new-instance v0, Lcmq$2;

    invoke-direct/range {v0 .. v5}, Lcmq$2;-><init>(Lcmq;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 279
    return-void
.end method
