.class final Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;
.super Ljava/lang/Object;
.source "CMailQuickReplyPopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field final synthetic d:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;
    .param p4, "forward"    # Z

    .prologue
    .line 802
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;->d:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;->a:Ljava/lang/String;

    .line 804
    iput-object p3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;->b:Ljava/lang/String;

    .line 805
    iput-boolean p4, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;->c:Z

    .line 806
    return-void
.end method
