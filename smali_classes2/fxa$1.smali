.class public final Lfxa$1;
.super Ljava/lang/Object;
.source "NameManager.java"

# interfaces
.implements Lfxa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfxa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lfxa;


# direct methods
.method public constructor <init>(Lfxa;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lfxa;

    .prologue
    .line 178
    iput-object p1, p0, Lfxa$1;->b:Lfxa;

    iput-object p2, p0, Lfxa$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lckl;)V
    .locals 2
    .param p1, "nick"    # Lckl;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 181
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lckl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lfxa$1;->b:Lfxa;

    iget-object v1, p0, Lfxa$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p1}, Lfxa;->a(Lfxa;Lcom/alibaba/wukong/Callback;Lckl;)V

    .line 184
    :cond_0
    return-void
.end method
