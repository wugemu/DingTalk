.class public interface abstract Lcom/ta/utdid2/core/persistent/MySharedPreferences;
.super Ljava/lang/Object;
.source "MySharedPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;,
        Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;
    }
.end annotation


# virtual methods
.method public abstract checkFile()Z
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
.end method

.method public abstract getAll()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getFloat(Ljava/lang/String;F)F
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract registerOnSharedPreferenceChangeListener(Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;)V
.end method

.method public abstract unregisterOnSharedPreferenceChangeListener(Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;)V
.end method
