.class public interface abstract Ljpq;
.super Ljava/lang/Object;
.source "IWMLAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljpq$a;
    }
.end annotation


# virtual methods
.method public abstract closeApp(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract commitVisit(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract downLoadApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljpq$a",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppCodeInfo(Ljava/lang/String;)Ljpq$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljpq$a",
            "<",
            "Lcom/taobao/windmill/bundle/container/core/AppInfoModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreViewAppCodeInfo(Ljava/lang/String;)Ljpq$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljpq$a",
            "<",
            "Lcom/taobao/windmill/bundle/container/core/AppInfoModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setDamage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
