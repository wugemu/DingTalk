.class final Lcbs$20;
.super Lcmg;
.source "RedPacketsRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcbs;->a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcba;",
        "Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcbs;


# direct methods
.method constructor <init>(Lcbs;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcbs;

    .prologue
    .line 203
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;>;"
    iput-object p1, p0, Lcbs$20;->a:Lcbs;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    check-cast p1, Lcba;

    .line 1206
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;->fromIDL(Lcba;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterSentListObject;

    move-result-object v0

    .line 203
    return-object v0
.end method
