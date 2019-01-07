.class final Ldmt$3;
.super Ljava/lang/Object;
.source "LuckyTimeBannerManager2.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldmt;->b()V
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
        "Ljava/util/List",
        "<",
        "Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldmt;


# direct methods
.method constructor <init>(Ldmt;)V
    .locals 0
    .param p1, "this$0"    # Ldmt;

    .prologue
    .line 96
    iput-object p1, p0, Ldmt$3;->a:Ldmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 96
    check-cast p1, Ljava/util/List;

    .line 1099
    iget-object v0, p0, Ldmt$3;->a:Ldmt;

    invoke-static {v0, p1}, Ldmt;->a(Ldmt;Ljava/util/List;)V

    .line 96
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 110
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 105
    return-void
.end method
