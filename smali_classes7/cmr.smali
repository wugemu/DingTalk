.class public abstract Lcmr;
.super Ljava/lang/Object;
.source "CustomThemeWidget.java"

# interfaces
.implements Lcmq$a;


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0}, Lcmr;->d()V

    .line 47
    return-void
.end method

.method public final a(J)V
    .locals 0
    .param p1, "orgId"    # J

    .prologue
    .line 38
    return-void
.end method

.method public abstract a(Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;)Z
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0}, Lcmr;->d()V

    .line 13
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcmq;->a(Lcmq$a;)V

    .line 21
    invoke-virtual {p0}, Lcmr;->d()V

    .line 22
    return-void
.end method

.method public d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 25
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v1

    .line 1383
    iget-object v0, v1, Lcmq;->a:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    .line 26
    .local v0, "customThemeObject":Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;
    iget-object v1, p0, Lcmr;->a:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    if-ne v0, v1, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcmr;->a:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->mediaId:Ljava/lang/String;

    iget-object v2, p0, Lcmr;->a:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->mediaId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    :cond_2
    invoke-virtual {p0, v0}, Lcmr;->a(Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    iput-object v0, p0, Lcmr;->a:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    goto :goto_0
.end method
