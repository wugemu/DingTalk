.class final Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$4;
.super Ljava/lang/Object;
.source "RecruitVideoView.java"

# interfaces
.implements Ljju;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a(Lgvf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$4;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string/jumbo v0, "RecruitVideoView"

    invoke-static {v0, p1, p2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method
