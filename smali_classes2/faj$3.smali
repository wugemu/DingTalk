.class final Lfaj$3;
.super Lcmg;
.source "CommonApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfaj;->b(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfov;",
        "Lcom/alibaba/android/user/model/JobPositionEntryObject;",
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
    .line 158
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/model/JobPositionEntryObject;>;"
    iput-object p1, p0, Lfaj$3;->a:Lfaj;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    check-cast p1, Lfov;

    .line 1162
    if-eqz p1, :cond_0

    .line 1163
    invoke-static {p1}, Lcom/alibaba/android/user/model/JobPositionEntryObject;->fromIDLModel(Lfov;)Lcom/alibaba/android/user/model/JobPositionEntryObject;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1165
    :cond_0
    const/4 v0, 0x0

    .line 158
    goto :goto_0
.end method
