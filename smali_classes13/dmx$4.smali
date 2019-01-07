.class final Ldmx$4;
.super Ljava/lang/Object;
.source "LuckyTimePlanDataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldmx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Ldmx;


# direct methods
.method constructor <init>(Ldmx;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldmx;

    .prologue
    .line 202
    iput-object p1, p0, Ldmx$4;->c:Ldmx;

    iput-object p2, p0, Ldmx$4;->a:Ljava/lang/String;

    iput-object p3, p0, Ldmx$4;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    iget-object v2, p0, Ldmx$4;->c:Ldmx;

    iget-object v3, p0, Ldmx$4;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Ldmx;->a(Ldmx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "prefKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Ldmx$4$1;

    invoke-direct {v3, p0}, Ldmx$4$1;-><init>(Ldmx$4;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 223
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v2, p0, Ldmx$4;->c:Ldmx;

    invoke-static {v2, v1}, Ldmx;->b(Ldmx;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 217
    .local v0, "localCache":Ljava/util/List;, "Ljava/util/List<Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Ldmx$4$2;

    invoke-direct {v3, p0, v0, v1}, Ldmx$4$2;-><init>(Ldmx$4;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
