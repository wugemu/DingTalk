.class public final Ldyc$8;
.super Lcmg;
.source "ImgResAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldyc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lduh;",
        "Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldyc;


# direct methods
.method public constructor <init>(Ldyc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldyc;

    .prologue
    .line 352
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;>;"
    iput-object p1, p0, Ldyc$8;->a:Ldyc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 352
    check-cast p1, Lduh;

    .line 1355
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;->fromIdl(Lduh;)Lcom/alibaba/android/dingtalkim/models/RecommendEmotionObject;

    move-result-object v0

    .line 352
    return-object v0
.end method
