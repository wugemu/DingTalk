.class final Ldmt$2;
.super Ljava/lang/Object;
.source "LuckyTimeBannerManager2.java"

# interfaces
.implements Ldmw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldmt;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldmt;


# direct methods
.method constructor <init>(Ldmt;)V
    .locals 0
    .param p1, "this$0"    # Ldmt;

    .prologue
    .line 78
    iput-object p1, p0, Ldmt$2;->a:Ldmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "planDoList":Ljava/util/List;, "Ljava/util/List<Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;>;"
    iget-object v0, p0, Ldmt$2;->a:Ldmt;

    invoke-static {v0, p1}, Ldmt;->a(Ldmt;Ljava/util/List;)V

    .line 82
    return-void
.end method
