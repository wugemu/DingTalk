.class final Ldya$2;
.super Lcmg;
.source "ImAttractApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldya;->a(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldts;",
        "Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldya;


# direct methods
.method constructor <init>(Ldya;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldya;

    .prologue
    .line 31
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;>;"
    iput-object p1, p0, Ldya$2;->a:Ldya;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, Ldts;

    .line 1034
    invoke-static {p1}, Leaz;->a(Ldts;)Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;

    move-result-object v0

    .line 31
    return-object v0
.end method
