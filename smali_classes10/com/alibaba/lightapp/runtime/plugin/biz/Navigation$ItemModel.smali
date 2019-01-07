.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
.super Ljava/lang/Object;
.source "Navigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemModel"
.end annotation


# instance fields
.field private badge:Ljava/lang/String;

.field private badgeJustRedDot:Z

.field private checked:Z

.field private drawableId:I

.field private iconId:Ljava/lang/String;

.field private iconName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isControl:Z

.field private mediaId:Ljava/lang/String;

.field private rightDisable:Z

.field private text:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->badgeJustRedDot:Z

    .line 760
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->checked:Z

    .line 761
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->rightDisable:Z

    return-void
.end method


# virtual methods
.method public getBadge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->badge:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgeJustRedDot()Z
    .locals 1

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->badgeJustRedDot:Z

    return v0
.end method

.method public getDrawableId()I
    .locals 1

    .prologue
    .line 838
    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->drawableId:I

    return v0
.end method

.method public getIconId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->iconId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->iconName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->checked:Z

    return v0
.end method

.method public isControl()Z
    .locals 1

    .prologue
    .line 820
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->isControl:Z

    return v0
.end method

.method public isRightDisable()Z
    .locals 1

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->rightDisable:Z

    return v0
.end method

.method public setBadge(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .locals 0
    .param p1, "badge"    # Ljava/lang/String;

    .prologue
    .line 860
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->badge:Ljava/lang/String;

    .line 861
    return-object p0
.end method

.method public setBadgeJustRedDot(Z)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .locals 0
    .param p1, "justRedDot"    # Z

    .prologue
    .line 851
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->badgeJustRedDot:Z

    .line 852
    return-object p0
.end method

.method public setChecked(Z)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 869
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->checked:Z

    .line 870
    return-object p0
.end method

.method public setControl(Z)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .locals 0
    .param p1, "control"    # Z

    .prologue
    .line 824
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->isControl:Z

    .line 825
    return-object p0
.end method

.method public setDisable(Z)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 829
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->rightDisable:Z

    .line 830
    return-object p0
.end method

.method public setDrawableId(I)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .locals 0
    .param p1, "drawableId"    # I

    .prologue
    .line 842
    iput p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->drawableId:I

    .line 843
    return-object p0
.end method

.method public setIconId(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .locals 0
    .param p1, "iconId"    # Ljava/lang/String;

    .prologue
    .line 778
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->iconId:Ljava/lang/String;

    .line 779
    return-object p0
.end method

.method public setIconName(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .locals 0
    .param p1, "iconName"    # Ljava/lang/String;

    .prologue
    .line 787
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->iconName:Ljava/lang/String;

    .line 788
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->id:Ljava/lang/String;

    .line 806
    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 796
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->mediaId:Ljava/lang/String;

    .line 797
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 768
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->text:Ljava/lang/String;

    .line 769
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 814
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->url:Ljava/lang/String;

    .line 815
    return-object p0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 874
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 877
    .local v0, "message":Lorg/json/JSONObject;
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 878
    const-string/jumbo v3, "id"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 880
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 881
    const-string/jumbo v3, "text"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->text:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 882
    const-string/jumbo v3, "title"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->text:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 884
    :cond_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->iconId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 885
    const-string/jumbo v3, "iconId"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->iconId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 887
    :cond_2
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->mediaId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 888
    const-string/jumbo v3, "mediaId"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 890
    :cond_3
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 891
    const-string/jumbo v3, "url"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->url:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 893
    :cond_4
    const-string/jumbo v4, "status"

    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->checked:Z

    if-eqz v3, :cond_6

    move v3, v1

    :goto_0
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 894
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->badge:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 895
    const-string/jumbo v3, "badge"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->badge:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 897
    :cond_5
    const-string/jumbo v3, "showRedDot"

    iget-boolean v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->badgeJustRedDot:Z

    if-eqz v4, :cond_7

    :goto_1
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :goto_2
    return-object v0

    :cond_6
    move v3, v2

    .line 893
    goto :goto_0

    :cond_7
    move v1, v2

    .line 897
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method
