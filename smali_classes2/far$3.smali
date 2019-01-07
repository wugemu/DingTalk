.class public final Lfar$3;
.super Lcmg;
.source "LabelAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lceb;",
        "Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfar;


# direct methods
.method public constructor <init>(Lfar;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfar;

    .prologue
    .line 129
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;>;"
    iput-object p1, p0, Lfar$3;->a:Lfar;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    check-cast p1, Lceb;

    .line 1132
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->fromIDLModel(Lceb;)Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    move-result-object v0

    .line 129
    return-object v0
.end method
