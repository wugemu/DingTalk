.class public final Lcno;
.super Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;
.source "TextUnreadIndicator.java"


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isIndicator"    # Z
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;-><init>(Z)V

    .line 28
    iput-object p2, p0, Lcno;->b:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcno;->b:Ljava/lang/String;

    return-object v0
.end method
