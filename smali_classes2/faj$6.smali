.class final Lfaj$6;
.super Lcmg;
.source "CommonApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfaj;->b(Lcom/alibaba/android/user/model/ChannelInfoObject;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfog;",
        "Lcom/alibaba/android/user/model/ChannelInfoResponseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfaj;


# direct methods
.method constructor <init>(Lfaj;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfaj;

    .prologue
    .line 218
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/model/ChannelInfoResponseObject;>;"
    iput-object p1, p0, Lfaj$6;->a:Lfaj;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 218
    check-cast p1, Lfog;

    .line 1222
    invoke-static {p1}, Lcom/alibaba/android/user/model/ChannelInfoResponseObject;->fromIDLModel(Lfog;)Lcom/alibaba/android/user/model/ChannelInfoResponseObject;

    move-result-object v0

    .line 218
    return-object v0
.end method
