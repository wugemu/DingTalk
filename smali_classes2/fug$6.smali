.class public final Lfug$6;
.super Lcmg;
.source "NameCardApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcha;",
        "Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfug;


# direct methods
.method public constructor <init>(Lfug;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfug;

    .prologue
    .line 77
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;>;"
    iput-object p1, p0, Lfug$6;->a:Lfug;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    check-cast p1, Lcha;

    .line 1080
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->fromIdl(Lcha;)Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    move-result-object v0

    .line 77
    return-object v0
.end method
