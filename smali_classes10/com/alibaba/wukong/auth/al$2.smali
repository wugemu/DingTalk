.class final Lcom/alibaba/wukong/auth/al$2;
.super Ljava/lang/Object;
.source "PushEventNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/al;->a(Lifg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aP:Lifh;

.field final synthetic aQ:Lifg;


# direct methods
.method constructor <init>(Lifh;Lifg;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/wukong/auth/al$2;->aP:Lifh;

    iput-object p2, p0, Lcom/alibaba/wukong/auth/al$2;->aQ:Lifg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/wukong/auth/al$2;->aP:Lifh;

    iget-object v1, p0, Lcom/alibaba/wukong/auth/al$2;->aQ:Lifg;

    invoke-virtual {v0, v1}, Lifh;->a(Lifg;)V

    .line 96
    return-void
.end method
