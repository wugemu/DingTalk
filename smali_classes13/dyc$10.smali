.class final Ldyc$10;
.super Lcmg;
.source "ImgResAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldyc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/idl/CustomEmotionAddResultModel;",
        "Ldra;",
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
    .line 143
    .local p2, "x0":Lcma;, "Lcma<Ldra;>;"
    iput-object p1, p0, Ldyc$10;->a:Ldyc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomEmotionAddResultModel;

    .line 1146
    invoke-static {p1}, Ldra;->a(Lcom/alibaba/android/dingtalkim/models/idl/CustomEmotionAddResultModel;)Ldra;

    move-result-object v0

    .line 143
    return-object v0
.end method
