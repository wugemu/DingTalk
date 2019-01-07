.class public Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;
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
    name = "NavigationBar"
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

.field public defaultTabTextColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "defaultTabTextColor"
    .end annotation
.end field

.field public defaultTabTextColorValue:I

.field public selectTabTextColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "selectTabTextColor"
    .end annotation
.end field

.field public selectTabTextColorValue:I

.field public textColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "textColor"
    .end annotation
.end field

.field public textColorValue:I

.field public titleColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "titleColor"
    .end annotation
.end field

.field public titleColorValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(J)V
    .locals 3
    .param p1, "oid"    # J

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->bgColor:Ljava/lang/String;

    invoke-static {v0}, Lcmq;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->bgColorValue:I

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->textColor:Ljava/lang/String;

    invoke-static {v0}, Lcmq;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->textColorValue:I

    .line 95
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->bgImage:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcmq;->a(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->bgImageValue:Landroid/graphics/Bitmap;

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->titleColor:Ljava/lang/String;

    invoke-static {v0}, Lcmq;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->titleColorValue:I

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->selectTabTextColor:Ljava/lang/String;

    invoke-static {v0}, Lcmq;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->selectTabTextColorValue:I

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->defaultTabTextColor:Ljava/lang/String;

    invoke-static {v0}, Lcmq;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->defaultTabTextColorValue:I

    .line 99
    return-void
.end method
