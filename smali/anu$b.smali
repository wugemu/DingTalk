.class public interface abstract Lanu$b;
.super Ljava/lang/Object;
.source "BindingXCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        "ParamA:",
        "Ljava/lang/Object;",
        "ParamB:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public varargs abstract createWith(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParamA;TParamB;[",
            "Ljava/lang/Object;",
            ")TType;"
        }
    .end annotation
.end method
