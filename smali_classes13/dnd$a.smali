.class final Ldnd$a;
.super Ljava/lang/Object;
.source "MdInstantRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldnd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/doraemon/threadpool/Thread;

.field b:Z

.field c:Z

.field final synthetic d:Ldnd;


# direct methods
.method public constructor <init>(Ldnd;)V
    .locals 1

    .prologue
    .line 241
    iput-object p1, p0, Ldnd$a;->d:Ldnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-static {p1}, Ldnd;->a(Ldnd;)Ldxc;

    move-result-object v0

    invoke-virtual {v0}, Ldxc;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    iput-object v0, p0, Ldnd$a;->a:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 243
    return-void
.end method
