.class public final Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder$a;
.super Ljava/lang/Object;
.source "SingleChatTaskTitleHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/CharSequence;

.field b:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "receiver"    # Ljava/lang/CharSequence;
    .param p2, "isSenderOrBoth"    # Z

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder$a;->a:Ljava/lang/CharSequence;

    .line 61
    iput-boolean p2, p0, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder$a;->b:Z

    .line 62
    return-void
.end method
