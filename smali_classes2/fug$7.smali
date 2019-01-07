.class public final Lfug$7;
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
        "Lche;",
        "Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;",
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
    .line 92
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;>;"
    iput-object p1, p0, Lfug$7;->a:Lfug;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    check-cast p1, Lche;

    .line 1095
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->fromIdl(Lche;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v0

    .line 92
    return-object v0
.end method
