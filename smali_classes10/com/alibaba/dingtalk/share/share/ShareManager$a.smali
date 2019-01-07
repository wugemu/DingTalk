.class abstract Lcom/alibaba/dingtalk/share/share/ShareManager$a;
.super Ljava/lang/Object;
.source "ShareManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/ShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field protected c:Lcom/alibaba/dingtalk/share/share/ShareManager$b;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/share/share/ShareManager$b;)V
    .locals 1
    .param p1, "i"    # Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .prologue
    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$a;->c:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 1085
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$a;->c:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 1086
    return-void
.end method
