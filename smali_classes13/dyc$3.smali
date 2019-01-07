.class public final Ldyc$3;
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
        "Ldtd;",
        "Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;",
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
    .line 291
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;>;"
    iput-object p1, p0, Ldyc$3;->a:Ldyc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 291
    check-cast p1, Ldtd;

    .line 1295
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->fromIdl(Ldtd;)Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    move-result-object v0

    .line 291
    return-object v0
.end method
