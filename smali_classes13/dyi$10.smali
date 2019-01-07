.class public final Ldyi$10;
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
        "Ldsh;",
        "Lcom/alibaba/android/dingtalkim/models/ActionResultObject;",
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
    .line 196
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/ActionResultObject;>;"
    iput-object p1, p0, Ldyi$10;->a:Ldyi;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 196
    check-cast p1, Ldsh;

    .line 1199
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/models/ActionResultObject;->fromIdl(Ldsh;)Lcom/alibaba/android/dingtalkim/models/ActionResultObject;

    move-result-object v0

    .line 196
    return-object v0
.end method
