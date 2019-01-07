.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1168
    if-eqz p1, :cond_2

    .line 1169
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 1170
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1171
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 1174
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->t(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->u(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1175
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->t(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->v(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->a(Ljava/util/List;)V

    .line 1194
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;)V

    .line 1195
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V

    .line 1197
    :cond_2
    return-void

    .line 1178
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1179
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    new-instance v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-direct {v2}, Lcom/alibaba/android/projection/data/FocusDeviceObject;-><init>()V

    invoke-static {v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 1180
    invoke-static {}, Legr;->a()Legr;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v2

    .line 2044
    iput-object v2, v1, Legr;->b:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 1182
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1183
    .local v0, "castCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1184
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1186
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v1

    iput-object v0, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 1190
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->t(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1191
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$9;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->t(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->a()V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1159
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1164
    return-void
.end method
