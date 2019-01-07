.class public final Ldyi$8;
.super Lcmg;
.source "OneboxAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldyi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldub;",
        "Lcom/alibaba/android/dingtalkim/models/OneBoxObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldyi;


# direct methods
.method public constructor <init>(Ldyi;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldyi;

    .prologue
    .line 165
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/OneBoxObject;>;"
    iput-object p1, p0, Ldyi$8;->a:Ldyi;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    check-cast p1, Ldub;

    .line 1168
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->fromModelIDL(Ldub;)Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    move-result-object v0

    .line 165
    return-object v0
.end method
