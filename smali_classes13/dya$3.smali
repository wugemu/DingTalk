.class final Ldya$3;
.super Lcmg;
.source "ImAttractApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldya;->b(Ljava/lang/String;Lcma;)V
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
    .line 44
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;>;"
    iput-object p1, p0, Ldya$3;->a:Ldya;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, Ldts;

    .line 1047
    invoke-static {p1}, Leaz;->a(Ldts;)Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;

    move-result-object v0

    .line 44
    return-object v0
.end method
