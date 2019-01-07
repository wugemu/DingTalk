.class final Lcom/alibaba/dingtalk/share/share/ShareManager$b$1;
.super Ljava/lang/Object;
.source "ShareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/ShareManager$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/share/share/ShareManager$b;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/ShareManager$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .prologue
    .line 972
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$b$1;->a:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$b$1;->a:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-static {v0}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$b;)V

    .line 976
    return-void
.end method
