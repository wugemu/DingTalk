.class public Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;
.super Landroid/text/style/URLSpan;
.source "LinkSpan.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColor:I

.field private mLinkClickListener:Ldnu$b;

.field private mMessageId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;->mColor:I

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLdnu$b;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "messageId"    # J
    .param p5, "linkClickListener"    # Ldnu$b;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 28
    iput p2, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;->mColor:I

    .line 29
    iput-wide p3, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;->mMessageId:J

    .line 30
    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;->mLinkClickListener:Ldnu$b;

    .line 31
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "urlString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;->mLinkClickListener:Ldnu$b;

    if-eqz v2, :cond_2

    .line 58
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;->mLinkClickListener:Ldnu$b;

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;->mMessageId:J

    invoke-interface {v2, v4, v5, v1}, Ldnu$b;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, "tmpActivity1":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 63
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    check-cast v0, Landroid/app/Activity;

    .end local v0    # "tmpActivity1":Landroid/content/Context;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Landroid/text/style/URLSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 41
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/LinkSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    return-void
.end method
