.class final Lfar$1;
.super Lcmg;
.source "LabelAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfar;->a(JIZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcea;",
        "Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfar;


# direct methods
.method constructor <init>(Lfar;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfar;

    .prologue
    .line 84
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;>;"
    iput-object p1, p0, Lfar$1;->a:Lfar;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    check-cast p1, Lcea;

    .line 1087
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;->fromIDLModel(Lcea;)Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;

    move-result-object v0

    .line 84
    return-object v0
.end method
