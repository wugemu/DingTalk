.class final Lcom/alibaba/android/rimet/RimetDDContext$40;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->setLocale(ZLandroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Locale;

.field final synthetic b:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;Ljava/util/Locale;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 3446
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$40;->b:Lcom/alibaba/android/rimet/RimetDDContext;

    iput-object p2, p0, Lcom/alibaba/android/rimet/RimetDDContext$40;->a:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3449
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$40;->b:Lcom/alibaba/android/rimet/RimetDDContext;

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$40;->a:Ljava/util/Locale;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/rimet/RimetDDContext;->updateLocaleInCloudSetting(Ljava/util/Locale;Z)V

    .line 3450
    return-void
.end method
