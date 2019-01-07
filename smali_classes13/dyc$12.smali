.class final Ldyc$12;
.super Lcmg;
.source "ImgResAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldyc;->a(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldsy;",
        "Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldyc;


# direct methods
.method constructor <init>(Ldyc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldyc;

    .prologue
    .line 229
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;>;"
    iput-object p1, p0, Ldyc$12;->a:Ldyc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 229
    check-cast p1, Ldsy;

    .line 1232
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->fromIDL(Ldsy;)Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    move-result-object v0

    .line 229
    return-object v0
.end method
