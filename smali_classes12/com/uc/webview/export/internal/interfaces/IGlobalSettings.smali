.class public interface abstract Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# static fields
.field public static final SETTINGS_TYPE_BOOL:I = 0x2

.field public static final SETTINGS_TYPE_FLOAT:I = 0x3

.field public static final SETTINGS_TYPE_INT:I = 0x1

.field public static final SETTINGS_TYPE_STRING:I = 0x4


# virtual methods
.method public abstract getBoolValue(Ljava/lang/String;)Z
.end method

.method public abstract getFloatValue(Ljava/lang/String;)F
.end method

.method public abstract getIntValue(Ljava/lang/String;)I
.end method

.method public abstract getStringValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setBoolValue(Ljava/lang/String;Z)V
.end method

.method public abstract setFloatValue(Ljava/lang/String;F)V
.end method

.method public abstract setIntValue(Ljava/lang/String;I)V
.end method

.method public abstract setStringValue(Ljava/lang/String;Ljava/lang/String;)V
.end method
