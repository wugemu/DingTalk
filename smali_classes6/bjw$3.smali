.class final Lbjw$3;
.super Ljava/lang/Object;
.source "DingNotificationCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lbjw;


# direct methods
.method constructor <init>(Lbjw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lbjw;

    .prologue
    .line 100
    iput-object p1, p0, Lbjw$3;->e:Lbjw;

    iput-object p2, p0, Lbjw$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lbjw$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lbjw$3;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lbjw$3;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 103
    iget-object v1, p0, Lbjw$3;->e:Lbjw;

    invoke-static {v1}, Lbjw;->a(Lbjw;)Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;

    move-result-object v1

    if-nez v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Laza;

    invoke-direct {v0}, Laza;-><init>()V

    .line 107
    .local v0, "dingNotificationObject":Laza;
    iget-object v1, p0, Lbjw$3;->a:Ljava/lang/String;

    .line 1021
    iput-object v1, v0, Laza;->a:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lbjw$3;->b:Ljava/lang/String;

    .line 1029
    iput-object v1, v0, Laza;->b:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lbjw$3;->c:Ljava/lang/String;

    .line 1037
    iput-object v1, v0, Laza;->c:Ljava/lang/String;

    .line 110
    iget-boolean v1, p0, Lbjw$3;->d:Z

    .line 1045
    iput-boolean v1, v0, Laza;->d:Z

    .line 111
    iget-object v1, p0, Lbjw$3;->e:Lbjw;

    invoke-static {v1}, Lbjw;->a(Lbjw;)Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;->a(Laza;)V

    goto :goto_0
.end method
