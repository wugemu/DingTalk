.class public Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;
.super Ljava/lang/Object;
.source "CustomThemeObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;,
        Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;
    }
.end annotation


# instance fields
.field public icon:Ljava/util/HashMap;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public iconValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public mediaId:Ljava/lang/String;

.field public navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "navigationBar"
    .end annotation
.end field

.field public orgId:J

.field public statusBarStyle:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statusBarStyle"
    .end annotation
.end field

.field public tabbar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tabbar"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method


# virtual methods
.method public init(JLjava/lang/String;)V
    .locals 9
    .param p1, "oid"    # J
    .param p3, "mid"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->orgId:J

    .line 37
    iput-object p3, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->mediaId:Ljava/lang/String;

    .line 38
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    if-eqz v3, :cond_0

    .line 39
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->orgId:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->init(J)V

    .line 41
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->tabbar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;

    if-eqz v3, :cond_1

    .line 42
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->tabbar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->orgId:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;->init(J)V

    .line 44
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->icon:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 45
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->iconValue:Ljava/util/HashMap;

    .line 46
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->icon:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->icon:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    .local v2, "value":Ljava/lang/String;
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v4

    iget-wide v6, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->orgId:J

    invoke-virtual {v4, v6, v7, v2}, Lcmq;->a(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->iconValue:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method
