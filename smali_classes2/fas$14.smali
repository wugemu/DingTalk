.class public final Lfas$14;
.super Lcmg;
.source "LoginApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/util/List",
        "<",
        "Lcfx;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfas;


# direct methods
.method public constructor <init>(Lfas;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfas;

    .prologue
    .line 557
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;>;>;"
    iput-object p1, p0, Lfas$14;->a:Lfas;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 557
    check-cast p1, Ljava/util/List;

    .line 1560
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;->fromIDLModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 557
    return-object v0
.end method
