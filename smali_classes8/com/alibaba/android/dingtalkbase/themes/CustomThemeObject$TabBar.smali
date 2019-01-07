.class public Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;
.super Ljava/lang/Object;
.source "CustomThemeObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabBar"
.end annotation


# instance fields
.field public bgColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bgColor"
    .end annotation
.end field

.field public bgColorValue:I

.field public bgImage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bgImage"
    .end annotation
.end field

.field public bgImageValue:Landroid/graphics/Bitmap;

.field public selectTextColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "selectTextColor"
    .end annotation
.end field

.field public selectTextColorValue:I

.field public textColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "textColor"
    .end annotation
.end field

.field public textColorValue:I

.field public type:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(J)V
    .locals 3
    .param p1, "oid"    # J

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;->bgColor:Ljava/lang/String;

    invoke-static {v0}, Lcmq;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;->bgColorValue:I

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;->textColor:Ljava/lang/String;

    invoke-static {v0}, Lcmq;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;->textColorValue:I

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;->selectTextColor:Ljava/lang/String;

    invoke-static {v0}, Lcmq;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;->selectTextColorValue:I

    .line 136
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;->bgImage:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcmq;->a(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$TabBar;->bgImageValue:Landroid/graphics/Bitmap;

    .line 137
    return-void
.end method
